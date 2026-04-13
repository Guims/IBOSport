.class public final synthetic Lib/player/pages/series/i;
.super Ljava/lang/Object;

# interfaces
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lcom/bumptech/glide/f;


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/f;I)V
    .locals 0

    iput p2, p0, Lib/player/pages/series/i;->b:I

    iput-object p1, p0, Lib/player/pages/series/i;->q:Lcom/bumptech/glide/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget v0, p0, Lib/player/pages/series/i;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lib/player/pages/series/i;->q:Lcom/bumptech/glide/f;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/j;

    sget-object v2, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lib/player/pages/series/j;->X()V

    invoke-virtual {v0, v1}, Lib/player/pages/series/j;->Y(LB4/o;)V

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->s0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, v2, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/j;

    sget-object v2, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lib/player/pages/series/j;->X()V

    invoke-virtual {v0, v1}, Lib/player/pages/series/j;->Y(LB4/o;)V

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->s0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
