.class public final synthetic LD4/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/b;
.implements Lib/player/base/helper/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:LD4/h;


# direct methods
.method public synthetic constructor <init>(LD4/h;I)V
    .locals 0

    iput p2, p0, LD4/b;->b:I

    iput-object p1, p0, LD4/b;->q:LD4/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroidx/activity/result/a;

    iget v0, p1, Landroidx/activity/result/a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/activity/result/a;->q:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "search_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, LD4/b;->q:LD4/h;

    iget-object v1, v1, LD4/h;->w0:Lib/player/base/o;

    new-instance v2, LF4/e;

    invoke-direct {v2}, LF4/e;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "tag"

    const-string v5, "search"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, LF4/e;->u0:Lib/player/base/o;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    check-cast v1, Lib/player/pages/MainActivity;

    invoke-virtual {v1, v2}, Lib/player/pages/MainActivity;->f0(Lib/player/base/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget v0, p0, LD4/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD4/b;->q:LD4/h;

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->w0(Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LD4/b;->q:LD4/h;

    iget-object v1, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/base/helper/w;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lib/player/base/helper/w;->w0(Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
