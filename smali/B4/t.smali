.class public LB4/t;
.super LB4/s;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LB4/s<",
        "Lx4/i;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field public A1:Landroid/widget/TextView;

.field public B1:Landroid/widget/TextView;

.field public C1:Landroid/widget/TextView;

.field public D1:Landroid/widget/TextView;

.field public E1:Landroid/widget/TextView;

.field public F1:Landroid/widget/TextView;

.field public G1:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H1:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public I1:Landroid/widget/ImageButton;

.field public J1:Landroid/widget/ImageButton;

.field public K1:Landroid/widget/ImageButton;

.field public L1:Landroid/widget/ImageButton;

.field public M1:Landroid/widget/ImageButton;

.field public N1:Landroid/widget/ImageButton;

.field public w1:Landroid/widget/TextView;

.field public x1:Landroid/widget/TextView;

.field public y1:Landroid/widget/TextView;

.field public z1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LB4/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 2

    iget-object v0, p0, LB4/s;->n1:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    const v2, 0x7f0b00c2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->A(I)Landroidx/fragment/app/t;

    move-result-object v0

    check-cast v0, Lib/player/base/BaseFragment;

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->A(I)Landroidx/fragment/app/t;

    move-result-object v0

    check-cast v0, Lib/player/base/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return v4

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->A(I)Landroidx/fragment/app/t;

    move-result-object v0

    check-cast v0, Lib/player/base/BaseFragment;

    invoke-virtual {v0, p1}, Lib/player/base/BaseFragment;->Q(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x2

    iget-object v2, p0, LB4/s;->u0:[I

    const/16 v5, 0x8

    iget-object v6, p0, LB4/s;->v0:[I

    if-eq p1, v3, :cond_2d

    const/16 v3, 0x59

    const/16 v7, 0xa

    if-eq p1, v3, :cond_2a

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_28

    const/16 v3, 0x87

    if-eq p1, v3, :cond_24

    const/16 v3, 0x88

    if-eq p1, v3, :cond_23

    const/16 v3, 0xa6

    if-eq p1, v3, :cond_22

    const/16 v3, 0xa7

    if-eq p1, v3, :cond_21

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, LB4/s;->g0()V

    return v4

    :pswitch_1
    invoke-virtual {p0}, LB4/s;->h0()V

    return v4

    :pswitch_2
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_31

    invoke-virtual {p0, v1}, LB4/s;->t0(Z)V

    return v4

    :pswitch_3
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-nez p1, :cond_3

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_2
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_3
    iget p1, p0, LB4/s;->u1:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, LB4/s;->m0()V

    return v4

    :cond_4
    iget-object p1, p0, LB4/t;->N1:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_31

    goto/16 :goto_0

    :pswitch_4
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-nez p1, :cond_6

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_5
    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_6
    iget p1, p0, LB4/s;->u1:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, LB4/s;->n0()V

    return v4

    :cond_7
    iget-object p1, p0, LB4/t;->I1:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_31

    goto/16 :goto_0

    :pswitch_5
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_8

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v0, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, LB4/s;->k0()V

    return v4

    :cond_8
    iget p1, p0, LB4/s;->u1:I

    invoke-static {p1}, Lp/e;->c(I)I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v0, :cond_2c

    goto/16 :goto_1

    :cond_9
    const/4 p1, 0x3

    iput p1, p0, LB4/s;->u1:I

    invoke-virtual {p0, v4}, LB4/t;->u0(Z)V

    return v4

    :cond_a
    iput v0, p0, LB4/s;->u1:I

    return v4

    :cond_b
    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_c

    goto/16 :goto_0

    :cond_c
    iget-object p1, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v6, v1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_d
    iget-object p1, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v6, v4

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_e
    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_f

    aget p1, v6, v1

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_f

    aput v1, v6, v1

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_f
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_31

    aget p1, v6, v4

    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_31

    aput v1, v6, v4

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :pswitch_6
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_12

    iget p1, p0, LB4/s;->u1:I

    invoke-static {p1}, Lp/e;->c(I)I

    move-result p1

    if-eqz p1, :cond_11

    if-eq p1, v4, :cond_11

    if-eq p1, v0, :cond_10

    goto/16 :goto_1

    :cond_10
    iput v0, p0, LB4/s;->u1:I

    invoke-virtual {p0, v1}, LB4/t;->u0(Z)V

    return v4

    :cond_11
    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return v4

    :cond_12
    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_13

    goto/16 :goto_0

    :cond_13
    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_14

    aget p1, v6, v1

    if-nez p1, :cond_14

    invoke-virtual {p0}, LB4/t;->F0()V

    iget-object p1, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_14
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_15

    aget p1, v6, v4

    if-nez p1, :cond_15

    invoke-virtual {p0}, LB4/t;->F0()V

    iget-object p1, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_15
    iget-object p1, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_16
    iget-object p1, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :pswitch_7
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_17

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "9"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_8
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_18

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "8"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_9
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_19

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "7"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_a
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_1a

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "6"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_b
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_1b

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "5"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_c
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_1c

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "4"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_d
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_1d

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "3"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_e
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_1e

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_f
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_1f

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :pswitch_10
    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v5, :cond_20

    iget-object p1, p0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LB4/s;->C0:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {p1, v0, v1}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LB4/s;->x0:I

    invoke-virtual {p0}, LB4/s;->Z()V

    return v4

    :cond_21
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_31

    invoke-virtual {p0}, LB4/s;->n0()V

    return v4

    :cond_22
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_31

    invoke-virtual {p0}, LB4/s;->m0()V

    return v4

    :cond_23
    :pswitch_11
    invoke-virtual {p0}, LB4/s;->A0()V

    return v4

    :cond_24
    :pswitch_12
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz p1, :cond_2c

    aget v0, v2, v4

    invoke-virtual {p0, p1, v0}, LB4/s;->W(Lib/player/models/EPGChannel;I)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, LB4/s;->x0(Z)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_25
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_26
    iget-object p1, p0, LB4/s;->o0:Lio/realm/T;

    aget v0, v6, v4

    invoke-virtual {p1, v0}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    if-eqz p1, :cond_2c

    aget v0, v2, v4

    invoke-virtual {p0, p1, v0}, LB4/s;->W(Lib/player/models/EPGChannel;I)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p0, v0}, LB4/s;->x0(Z)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_27
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_28
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-nez p1, :cond_31

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_29

    aget p1, v6, v1

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    if-ge p1, v0, :cond_2c

    aget p1, v6, v1

    add-int/2addr p1, v7

    aput p1, v6, v1

    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_29
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2c

    aget p1, v6, v4

    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    if-ge p1, v0, :cond_2c

    aget p1, v6, v4

    add-int/2addr p1, v7

    aput p1, v6, v4

    iget-object v0, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_2a
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-nez p1, :cond_31

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2b

    aget p1, v6, v1

    if-le p1, v7, :cond_2c

    sub-int/2addr p1, v7

    aput p1, v6, v1

    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_2b
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_2c

    aget p1, v6, v4

    if-le p1, v7, :cond_2c

    sub-int/2addr p1, v7

    aput p1, v6, v4

    iget-object v0, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    :cond_2c
    :goto_0
    return v4

    :cond_2d
    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, LB4/t;->u0(Z)V

    iput v0, p0, LB4/s;->u1:I

    return v4

    :cond_2e
    iget-boolean p1, p0, LB4/s;->D0:Z

    if-eqz p1, :cond_2f

    invoke-virtual {p0, v1}, LB4/s;->t0(Z)V

    return v4

    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onKeyDown: Back Pressed"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LB4/s;->w0:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LiveFragment"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget p1, v6, v4

    aget v2, v0, v4

    if-eq p1, v2, :cond_30

    aget p1, v6, v1

    aget v3, v0, v1

    if-ne p1, v3, :cond_30

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_30
    aget p1, v6, v1

    aget v2, v0, v1

    if-eq p1, v2, :cond_31

    iget-object p1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    aget p1, v0, v1

    aput p1, v6, v1

    iget-object p1, p0, LB4/s;->r0:Ls4/z;

    aget v2, v0, v1

    iget v3, p1, Ls4/z;->h:I

    iput v2, p1, Ls4/z;->h:I

    invoke-virtual {p1, v3}, Lv1/y;->e(I)V

    iget v2, p1, Ls4/z;->h:I

    invoke-virtual {p1, v2}, Lv1/y;->e(I)V

    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, LB4/s;->l0(Ljava/lang/Integer;)V

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v4

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v4

    :cond_31
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_1
        :pswitch_0
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LC1/a;
    .locals 3

    sget v0, Lx4/i;->R:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e004e

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/i;

    return-object p1
.end method

.method public final i0()V
    .locals 3

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v1, v0, Lx4/i;->L:Lib/player/base/view/LiveVerticalGridView;

    iput-object v1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v1, v0, Lx4/i;->M:Lib/player/base/view/LiveVerticalGridView;

    iput-object v1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    iget-object v1, v0, Lx4/i;->N:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LB4/s;->O0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lx4/i;->B:Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, v0, Lx4/i;->C:Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, v0, Lx4/i;->K:Landroidx/media3/ui/PlayerView;

    iput-object v1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    iget-object v1, v0, Lx4/i;->D:Landroid/widget/EditText;

    iput-object v1, p0, LB4/s;->n1:Landroid/widget/EditText;

    iget-object v1, v0, Lx4/i;->E:Landroid/widget/EditText;

    iput-object v1, p0, LB4/s;->m1:Landroid/widget/EditText;

    iget-object v1, v0, Lx4/i;->P:Landroid/widget/TextView;

    iput-object v1, p0, LB4/s;->e1:Landroid/widget/TextView;

    iget-object v1, v0, Lx4/i;->F:Landroid/view/View;

    iput-object v1, p0, LB4/s;->S0:Landroid/view/View;

    iget-object v2, v0, Lx4/i;->H:Landroid/widget/ImageView;

    iput-object v2, p0, LB4/s;->k1:Landroid/widget/ImageView;

    iget-object v2, v0, Lx4/i;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, LB4/s;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lx4/i;->Q:Landroid/widget/TextView;

    iput-object v2, p0, LB4/s;->f1:Landroid/widget/TextView;

    iget-object v2, v0, Lx4/i;->I:Landroid/widget/ImageView;

    iput-object v2, p0, LB4/s;->l1:Landroid/widget/ImageView;

    iget-object v2, v0, Lx4/i;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, LB4/s;->U0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, v0, Lx4/i;->O:Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->W0:Landroid/widget/TextView;

    const v0, 0x7f0b03eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->w1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->x1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->y1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->A1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b040d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->B1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->E1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->C1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->D1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b0408

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->F1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/t;->z1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b0252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, LB4/t;->G1:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, LB4/t;->H1:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b0256

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b0263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b0257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b0265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/t;->I1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/t;->J1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/t;->K1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/t;->M1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/t;->N1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, LB4/t;->L1:Landroid/widget/ImageButton;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, LB4/s;->V0:Landroid/widget/SeekBar;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->X0:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->Y0:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->a1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->Z0:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->b1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->c1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->h1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->g1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->i1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b03fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LB4/s;->d1:Landroid/widget/TextView;

    iget-object v0, p0, LB4/s;->m0:LC1/a;

    check-cast v0, Lx4/i;

    iget-object v0, v0, Lx4/i;->F:Landroid/view/View;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LB4/s;->j1:Landroid/widget/ImageView;

    iget-object v0, p0, LB4/t;->w1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getPrevious_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->x1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getNext_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->y1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->A1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getEpg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->B1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMovies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->E1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->C1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->D1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getFavorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->F1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->z1:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getLock_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/t;->I1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/t;->J1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/t;->K1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/t;->L1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/t;->M1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/t;->N1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, LB4/t;->I1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/t;->J1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/t;->K1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/t;->L1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/t;->M1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/t;->N1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b008e

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01e1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01f8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LB4/s;->h0()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01f2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, LB4/s;->g0()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01f1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object p1, p0, LB4/s;->S0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x2

    iput p1, p0, LB4/s;->u1:I

    invoke-virtual {p0, v2}, LB4/t;->u0(Z)V

    invoke-virtual {p0}, LB4/s;->A0()V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0092

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    iget-object p1, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, LB4/s;->v0:[I

    aget v0, p1, v3

    iget-object v1, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v1}, Lio/realm/T;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    aget v1, p1, v3

    invoke-virtual {v0, v1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EPGChannel;

    if-eqz v0, :cond_d

    aget p1, p1, v3

    invoke-virtual {p0, v0, p1}, LB4/s;->W(Lib/player/models/EPGChannel;I)V

    invoke-virtual {v0}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, LB4/s;->x0(Z)V

    invoke-virtual {v0}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01e3

    iget-object v4, p0, LB4/s;->u0:[I

    if-ne v0, v1, :cond_7

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz p1, :cond_d

    aget v0, v4, v3

    invoke-virtual {p0, p1, v0}, LB4/s;->W(Lib/player/models/EPGChannel;I)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, LB4/s;->x0(Z)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_removed_from_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_added_to_fav()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01f4

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, LB4/s;->d0()V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01d4

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, LB4/s;->a0()V

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01e9

    if-ne p1, v0, :cond_d

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_locked_default()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_a
    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    aget v0, v4, v3

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    return-void

    :cond_b
    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    aget v0, v4, v3

    invoke-virtual {p0, p1, v0}, LB4/s;->X(Lib/player/models/EPGChannel;I)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, LB4/s;->z0(Z)V

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_unlocked()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getChannel_locked()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_d
    return-void

    :cond_e
    :goto_0
    invoke-virtual {p0}, LB4/s;->f0()V

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, LB4/s;->E0:Landroid/os/Handler;

    iget-object p2, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, LB4/s;->k0()V

    :cond_0
    return-void
.end method

.method public final u0(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, LB4/t;->G1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LB4/t;->H1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LB4/t;->I1:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    iget-object p1, p0, LB4/t;->G1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LB4/t;->H1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
