.class public final synthetic Ll3/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll3/a;->b:I

    iput-object p2, p0, Ll3/a;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Ll3/a;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ll3/a;->q:Ljava/lang/Object;

    check-cast p1, Ls4/p;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    const p2, 0x7f0801c5

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    const p2, 0x7f06038b

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Ll3/a;->q:Ljava/lang/Object;

    check-cast p1, Ls4/n;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    const p2, 0x7f0801c5

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    const p2, 0x7f06038b

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Ll3/a;->q:Ljava/lang/Object;

    check-cast p1, Ls4/m;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    const p2, 0x7f0801c5

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    const p2, 0x7f06038b

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, Ll3/a;->q:Ljava/lang/Object;

    check-cast p1, Ll3/j;

    iput-boolean p2, p1, Ll3/j;->l:Z

    invoke-virtual {p1}, Ll3/n;->p()V

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ll3/j;->s(Z)V

    iput-boolean p2, p1, Ll3/j;->m:Z

    :cond_3
    return-void

    :pswitch_3
    iget-object p1, p0, Ll3/a;->q:Ljava/lang/Object;

    check-cast p1, Ll3/d;

    invoke-virtual {p1}, Ll3/d;->t()Z

    move-result p2

    invoke-virtual {p1, p2}, Ll3/d;->s(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
