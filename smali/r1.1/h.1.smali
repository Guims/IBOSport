.class public final synthetic Lr1/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Lv1/y;


# direct methods
.method public synthetic constructor <init>(Lv1/y;II)V
    .locals 0

    iput p3, p0, Lr1/h;->b:I

    iput-object p1, p0, Lr1/h;->r:Lv1/y;

    iput p2, p0, Lr1/h;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lr1/h;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Ls4/o;

    iget v0, p1, Ls4/o;->f:I

    iget v1, p0, Lr1/h;->q:I

    iput v1, p1, Ls4/o;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget v0, p1, Ls4/o;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget-object p1, p1, Ls4/o;->g:Ld5/p;

    check-cast p1, Lk5/o;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lk5/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Lr1/i;

    iget-object v0, p1, Lr1/i;->g:Ljava/lang/Object;

    check-cast v0, LB4/d;

    iget-object p1, p1, Lr1/i;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget v1, p0, Lr1/h;->q:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/base/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Ls4/o;

    iget v0, p1, Ls4/o;->f:I

    iget v1, p0, Lr1/h;->q:I

    iput v1, p1, Ls4/o;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget v0, p1, Ls4/o;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget-object p1, p1, Ls4/o;->g:Ld5/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Ls4/o;

    iget v0, p1, Ls4/o;->f:I

    iget v1, p0, Lr1/h;->q:I

    iput v1, p1, Ls4/o;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget v0, p1, Ls4/o;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget-object p1, p1, Ls4/o;->g:Ld5/p;

    check-cast p1, Lk5/o;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lk5/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast v0, [Z

    iget v1, p0, Lr1/h;->q:I

    aget-boolean v2, v0, v1

    xor-int/lit8 v2, v2, 0x1

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v1}, Lv1/y;->e(I)V

    iget-object p1, p1, Ls4/b;->g:Ljava/lang/Object;

    check-cast p1, Ld5/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_4
    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Ls4/d;

    iget-object v0, p1, Ls4/d;->f:Ljava/lang/Object;

    check-cast v0, LB4/d;

    iget-object p1, p1, Ls4/d;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget v1, p0, Lr1/h;->q:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/base/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_5
    iget-object p1, p0, Lr1/h;->r:Lv1/y;

    check-cast p1, Lr1/i;

    iget-object v0, p1, Lr1/i;->h:Ljava/lang/Object;

    check-cast v0, Lr1/r;

    iget v1, p1, Lr1/i;->e:I

    iget v2, p0, Lr1/h;->q:I

    if-eq v2, v1, :cond_0

    iget-object p1, p1, Lr1/i;->g:Ljava/lang/Object;

    check-cast p1, [F

    aget p1, p1, v2

    invoke-static {v0, p1}, Lr1/r;->a(Lr1/r;F)V

    :cond_0
    iget-object p1, v0, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
