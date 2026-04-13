.class public final synthetic LB4/j;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LB4/s;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(LB4/s;II)V
    .locals 0

    iput p3, p0, LB4/j;->b:I

    iput-object p1, p0, LB4/j;->q:LB4/s;

    iput p2, p0, LB4/j;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    iget v0, p0, LB4/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/j;->q:LB4/s;

    iget-object v1, v0, LB4/s;->n0:Ljava/util/List;

    iget-object v2, v0, LB4/s;->u0:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fav_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget v2, p0, LB4/j;->r:I

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    goto :goto_0

    :cond_0
    new-instance v1, LB4/f;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, LB4/f;-><init>(LB4/s;I)V

    invoke-virtual {v0, v1}, LB4/s;->D0(Ld5/a;)V

    :goto_0
    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/base/helper/w;->h()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->n0(Ljava/util/ArrayList;)V

    iget-object v0, v0, LB4/s;->r0:Ls4/z;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LB4/j;->q:LB4/s;

    iget-object v1, v0, LB4/s;->n0:Ljava/util/List;

    iget-object v2, v0, LB4/s;->u0:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LB4/s;->s0:Lr1/i;

    iget v2, p0, LB4/j;->r:I

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    goto :goto_1

    :cond_1
    new-instance v1, LB4/f;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LB4/f;-><init>(LB4/s;I)V

    invoke-virtual {v0, v1}, LB4/s;->D0(Ld5/a;)V

    :goto_1
    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/base/helper/w;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->o0(Ljava/util/ArrayList;)V

    iget-object v0, v0, LB4/s;->r0:Ls4/z;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
