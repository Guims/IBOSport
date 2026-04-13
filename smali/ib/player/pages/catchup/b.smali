.class public final synthetic Lib/player/pages/catchup/b;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lib/player/pages/catchup/e;

.field public final synthetic r:I


# direct methods
.method public native synthetic constructor <init>(Lib/player/pages/catchup/e;II)V
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget v0, p0, Lib/player/pages/catchup/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lib/player/pages/catchup/b;->q:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->o0:Ljava/util/ArrayList;

    iget v2, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget v2, p0, Lib/player/pages/catchup/b;->r:I

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lib/player/pages/catchup/c;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lib/player/pages/catchup/c;-><init>(Lib/player/pages/catchup/e;I)V

    invoke-virtual {v0, v1}, Lib/player/pages/catchup/e;->Z(Ld5/a;)V

    :goto_0
    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/base/helper/w;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->o0(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lib/player/pages/catchup/e;->t0:Ls4/z;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/catchup/b;->q:Lib/player/pages/catchup/e;

    iget-object v1, v0, Lib/player/pages/catchup/e;->o0:Ljava/util/ArrayList;

    iget v2, v0, Lib/player/pages/catchup/e;->v0:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fav_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lib/player/pages/catchup/e;->u0:Lr1/i;

    iget v2, p0, Lib/player/pages/catchup/b;->r:I

    invoke-virtual {v1, v2}, Lv1/y;->e(I)V

    goto :goto_1

    :cond_1
    new-instance v1, Lib/player/pages/catchup/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lib/player/pages/catchup/c;-><init>(Lib/player/pages/catchup/e;I)V

    invoke-virtual {v0, v1}, Lib/player/pages/catchup/e;->Z(Ld5/a;)V

    :goto_1
    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/base/helper/w;->h()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/player/base/helper/w;->n0(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lib/player/pages/catchup/e;->t0:Ls4/z;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
