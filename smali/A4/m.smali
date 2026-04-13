.class public final synthetic LA4/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Lv1/y;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LA4/o;ILA4/n;Lib/player/models/BaseModel;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LA4/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA4/m;->r:Lv1/y;

    iput p2, p0, LA4/m;->q:I

    iput-object p3, p0, LA4/m;->s:Ljava/lang/Object;

    iput-object p4, p0, LA4/m;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lv1/y;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, LA4/m;->b:I

    iput-object p1, p0, LA4/m;->r:Lv1/y;

    iput-object p2, p0, LA4/m;->s:Ljava/lang/Object;

    iput p3, p0, LA4/m;->q:I

    iput-object p4, p0, LA4/m;->t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv1/y;Lv1/X;Ljava/io/Serializable;II)V
    .locals 0

    iput p5, p0, LA4/m;->b:I

    iput-object p1, p0, LA4/m;->r:Lv1/y;

    iput-object p2, p0, LA4/m;->s:Ljava/lang/Object;

    iput-object p3, p0, LA4/m;->t:Ljava/lang/Object;

    iput p4, p0, LA4/m;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 7

    iget p1, p0, LA4/m;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Lr1/i;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Ls4/f;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Lib/player/models/Season;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    const v2, 0x7f060390

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f06038b

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p1, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, Lib/player/pages/series/c;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, p2, v0}, Lib/player/pages/series/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Ls4/H;

    iget-object v1, v0, Ls4/H;->u:Landroid/widget/TextView;

    iget-object v0, v0, Ls4/H;->v:Landroid/widget/ImageView;

    iget-object v2, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v2, Lib/player/models/MovieModel;

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    const p2, 0x7f080239

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f080236

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/G;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/models/CategoryModel;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Ls4/F;

    iget-object v2, v1, Ls4/F;->u:Landroid/widget/TextView;

    iget-object v1, v1, Lv1/X;->a:Landroid/view/View;

    if-eqz p2, :cond_3

    iget-object p1, p1, Ls4/G;->f:Ld5/q;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, p2, v3}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f0801c5

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2

    :cond_3
    const p1, 0x106000d

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    return-void

    :pswitch_2
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Ls4/E;

    iget-object v1, v0, Ls4/E;->u:Landroid/widget/TextView;

    iget-object v0, v0, Ls4/E;->v:Landroid/widget/ImageView;

    iget-object v2, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v2, Lib/player/models/SeriesModel;

    if-eqz p2, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    const p2, 0x7f080239

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f080236

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    return-void

    :pswitch_3
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Ls4/D;

    iget-object v1, v0, Ls4/D;->u:Landroid/widget/TextView;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v2, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v2, Lib/player/models/EPGChannel;

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LF4/b;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0}, LF4/b;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f08023b

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    return-void

    :pswitch_4
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Lr1/i;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Ls4/B;

    iget-object v1, v0, Ls4/B;->u:Landroid/widget/TextView;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v2, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v2, Lib/player/models/EPGChannel;

    if-eqz p2, :cond_6

    const p2, 0x7f0801c5

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p1, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, LA4/b;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, p2, v0, v0}, LA4/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_5

    :cond_6
    const p1, 0x106000d

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_5
    return-void

    :pswitch_5
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/z;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Ls4/F;

    iget-object v1, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v0, v0, Ls4/F;->u:Landroid/widget/TextView;

    iget-object v2, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v2, Lib/player/models/CategoryModel;

    iget-object p1, p1, Ls4/z;->f:Ld5/q;

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, p2, v0}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f0801c5

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_7
    const p1, 0x106000d

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_6
    return-void

    :pswitch_6
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/y;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/models/CatchUpEpg;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Ls4/x;

    if-eqz p2, :cond_8

    iget-object p1, p1, Ls4/y;->f:Ld5/q;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, p2, v2}, Ld5/q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v1, Ls4/x;->w:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Ls4/x;->w:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_7
    return-void

    :pswitch_7
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/l;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/models/EpisodeModel;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Ls4/k;

    iget-object v1, v1, Lv1/X;->a:Landroid/view/View;

    if-eqz p2, :cond_9

    iget-object p1, p1, Ls4/l;->i:LS4/a;

    check-cast p1, LB4/d;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2, v2}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f080239

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_9
    const p1, 0x7f080236

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_8
    return-void

    :pswitch_8
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/j;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/models/EpisodeModel;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Ls4/i;

    iget-object v2, v1, Ls4/i;->u:Landroid/widget/TextView;

    iget-object v1, v1, Ls4/i;->x:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    iget-object p1, p1, Ls4/j;->h:Lib/player/pages/series/c;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2, v3}, Lib/player/pages/series/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f080239

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_9

    :cond_a
    const p1, 0x7f080236

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_9
    return-void

    :pswitch_9
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Ls4/b;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/models/CastModel;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Ls4/a;

    iget-object v1, v1, Ls4/a;->v:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    iget-object p1, p1, Ls4/b;->f:Ljava/lang/Object;

    check-cast p1, LB4/d;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2, v2}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    const p1, 0x7f0800a9

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    :cond_b
    const p1, 0x3f666666    # 0.9f

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    const p1, 0x7f06038b

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_a
    return-void

    :pswitch_a
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, Lib/player/pages/e;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/d;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Lib/player/pages/g;

    invoke-virtual {p1, p2, v0}, Lib/player/pages/e;->k(ZLib/player/pages/d;)V

    iget-object v0, v0, Lib/player/pages/d;->v:Landroid/widget/TextView;

    if-eqz p2, :cond_c

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p1, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast p1, LB4/d;

    iget p2, p0, LA4/m;->q:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v1, v0}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_c
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_b
    return-void

    :pswitch_b
    iget-object p1, p0, LA4/m;->r:Lv1/y;

    check-cast p1, LA4/o;

    iget-object v0, p0, LA4/m;->s:Ljava/lang/Object;

    check-cast v0, LA4/n;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    iget-object v1, p0, LA4/m;->t:Ljava/lang/Object;

    check-cast v1, Lib/player/models/BaseModel;

    iget-object v2, p1, LA4/o;->f:LA4/h;

    iget v3, p0, LA4/m;->q:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_d

    if-nez v3, :cond_d

    move v6, v5

    goto :goto_c

    :cond_d
    move v6, v4

    :goto_c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, LA4/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, LA4/o;->g:LA4/h;

    if-eqz p2, :cond_e

    iget v6, p1, LA4/o;->h:I

    if-nez v6, :cond_e

    move v4, v5

    :cond_e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, LA4/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p1, LA4/o;->e:LA4/g;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0, v1}, LA4/g;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_f
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
