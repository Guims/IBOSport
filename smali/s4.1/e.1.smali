.class public final synthetic Ls4/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Lv1/y;

.field public final synthetic s:Lv1/X;


# direct methods
.method public synthetic constructor <init>(Ls4/w;ILv1/X;I)V
    .locals 0

    iput p4, p0, Ls4/e;->b:I

    iput-object p1, p0, Ls4/e;->r:Lv1/y;

    iput p2, p0, Ls4/e;->q:I

    iput-object p3, p0, Ls4/e;->s:Lv1/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv1/y;Lv1/X;II)V
    .locals 0

    iput p4, p0, Ls4/e;->b:I

    iput-object p1, p0, Ls4/e;->r:Lv1/y;

    iput-object p2, p0, Ls4/e;->s:Lv1/X;

    iput p3, p0, Ls4/e;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget p1, p0, Ls4/e;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ls4/e;->r:Lv1/y;

    check-cast p1, Ls4/J;

    iget-object v0, p0, Ls4/e;->s:Lv1/X;

    check-cast v0, Ls4/O;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p1, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Le4/c;

    iget-object p1, p1, Le4/c;->q:Ljava/lang/Object;

    check-cast p1, LD4/x;

    iget p2, p0, Ls4/e;->q:I

    iput p2, p1, LD4/x;->u0:I

    iget-object v0, p1, LD4/x;->m0:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iput v1, p1, LD4/x;->x0:I

    iget-object v0, p1, LD4/x;->v0:Lib/player/pages/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lib/player/pages/MainActivity;->y0:Z

    iget-object v0, p1, LD4/x;->q0:Lio/realm/T;

    invoke-virtual {v0, p2}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/MovieModel;

    iget-object v0, p1, LD4/x;->B0:LA/o;

    if-eqz v0, :cond_0

    iget-object v1, p1, LD4/x;->A0:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, LA/o;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p2}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v0, p1, LD4/x;->B0:LA/o;

    iget-object p1, p1, LD4/x;->A0:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Ls4/e;->r:Lv1/y;

    check-cast p1, Ls4/o;

    iget-object v0, p0, Ls4/e;->s:Lv1/X;

    check-cast v0, Ls4/N;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    if-eqz p2, :cond_2

    const p2, 0x7f08021f

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Ls4/o;->g:Ld5/p;

    check-cast p1, Lk5/o;

    iget p2, p0, Ls4/e;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Lk5/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const p1, 0x7f06038b

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Ls4/e;->r:Lv1/y;

    check-cast p1, Ls4/J;

    iget-object v0, p0, Ls4/e;->s:Lv1/X;

    check-cast v0, Ls4/O;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    if-eqz p2, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p1, Ls4/J;->k:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/f;

    iget-object p1, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Lib/player/pages/series/j;

    iget p2, p0, Ls4/e;->q:I

    iput p2, p1, Lib/player/pages/series/j;->u0:I

    iget-object v0, p1, Lib/player/pages/series/j;->m0:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iput v1, p1, Lib/player/pages/series/j;->x0:I

    iget-object v0, p1, Lib/player/pages/series/j;->v0:Lib/player/pages/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lib/player/pages/MainActivity;->y0:Z

    iget-object v0, p1, Lib/player/pages/series/j;->q0:Lio/realm/T;

    invoke-virtual {v0, p2}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/SeriesModel;

    iget-object v0, p1, Lib/player/pages/series/j;->B0:LA/o;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lib/player/pages/series/j;->A0:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v0, LA/o;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1, p2}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v0, p1, Lib/player/pages/series/j;->B0:LA/o;

    iget-object p1, p1, Lib/player/pages/series/j;->A0:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, Ls4/e;->r:Lv1/y;

    check-cast p1, Ls4/w;

    iget-object v0, p0, Ls4/e;->s:Lv1/X;

    check-cast v0, Ls4/v;

    iget-object v0, v0, Ls4/v;->w:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    iget-object p1, p1, Ls4/w;->f:LB4/d;

    iget p2, p0, Ls4/e;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    const p1, 0x7f080216

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_5
    const p1, 0x3f666666    # 0.9f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    const p1, 0x7f080215

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    return-void

    :pswitch_3
    iget-object p1, p0, Ls4/e;->r:Lv1/y;

    check-cast p1, Ls4/w;

    iget-object v0, p0, Ls4/e;->s:Lv1/X;

    check-cast v0, Ls4/u;

    iget-object v0, v0, Ls4/u;->v:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    iget-object p1, p1, Ls4/w;->f:LB4/d;

    iget p2, p0, Ls4/e;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    const p1, 0x7f080216

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_6
    const p1, 0x3f666666    # 0.9f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    const p1, 0x7f080215

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    return-void

    :pswitch_4
    iget-object p1, p0, Ls4/e;->r:Lv1/y;

    check-cast p1, Lr1/i;

    iget-object v0, p0, Ls4/e;->s:Lv1/X;

    check-cast v0, Ls4/f;

    iget v1, p0, Ls4/e;->q:I

    invoke-virtual {p1, v0, v1, p2}, Lr1/i;->k(Ls4/f;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
